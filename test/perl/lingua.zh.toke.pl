use warning;
use utf8;
use Lingua::ZH::Toke 'utf8';
#use Lingua::ZH::Toke;       # add 'utf8' to use unicode strings

    # Create Lingua::ZH::Toke::Sentence object (->Sentence also works)
    my $token = Lingua::ZH::Toke->new( '那人卻在/燈火闌珊處/益發意興闌珊' );

    # Easy tokenization via array deferencing
    print $token->[0]           # Fragment       - 那人卻在
                ->[2]           # Phrase         - 卻在
                ->[0]           # Character      - 卻
                ->[0]           # Pronounciation - ㄑㄩㄝˋ
                ->[2];          # Phonetic        - ㄝ

    # Magic histogram via hash deferencing
    print $token->{'那人卻在'};     # 1 - One such fragment there
    print $token->{'意興闌珊'};     # 1 - One such phrase there
    print $token->{'發意興闌'};     # undef - That's not a phrase
    print $token->{'珊'};        # 2 - Two such character there
    print $token->{'ㄧˋ'};       # 2 - Two such pronounciation: 益意
    print $token->{'ㄨ'};        # 3 - Three such phonetics: 那火處
