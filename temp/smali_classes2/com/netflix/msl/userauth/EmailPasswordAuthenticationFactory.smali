.class public Lcom/netflix/msl/userauth/EmailPasswordAuthenticationFactory;
.super Lcom/netflix/msl/userauth/UserAuthenticationFactory;
.source "EmailPasswordAuthenticationFactory.java"


# instance fields
.field private final authutils:Lcom/netflix/msl/util/AuthenticationUtils;

.field private final store:Lcom/netflix/msl/userauth/EmailPasswordStore;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/userauth/EmailPasswordStore;Lcom/netflix/msl/util/AuthenticationUtils;)V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->EMAIL_PASSWORD:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/userauth/UserAuthenticationFactory;-><init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V

    .line 43
    iput-object p1, p0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationFactory;->store:Lcom/netflix/msl/userauth/EmailPasswordStore;

    .line 44
    iput-object p2, p0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationFactory;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    .line 45
    return-void
.end method


# virtual methods
.method public authenticate(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/tokens/MslUser;
    .locals 6

    .prologue
    .line 61
    instance-of v0, p3, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Incorrect authentication data type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p3

    .line 63
    check-cast v0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;

    .line 66
    iget-object v1, p0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationFactory;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationFactory;->getScheme()Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationScheme;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    new-instance v0, Lcom/netflix/msl/MslUserAuthException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERAUTH_ENTITY_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Authentication scheme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationFactory;->getScheme()Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not permitted for entity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslUserAuthException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslUserAuthException;

    move-result-object v0

    throw v0

    .line 70
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 72
    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    .line 73
    :cond_2
    new-instance v1, Lcom/netflix/msl/MslUserAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->EMAILPASSWORD_BLANK:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;)V

    invoke-virtual {v1, v0}, Lcom/netflix/msl/MslUserAuthException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslUserAuthException;

    move-result-object v0

    throw v0

    .line 74
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 77
    :cond_4
    new-instance v1, Lcom/netflix/msl/MslUserAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->EMAILPASSWORD_BLANK:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;)V

    invoke-virtual {v1, v0}, Lcom/netflix/msl/MslUserAuthException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslUserAuthException;

    move-result-object v0

    throw v0

    .line 80
    :cond_5
    iget-object v3, p0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationFactory;->store:Lcom/netflix/msl/userauth/EmailPasswordStore;

    invoke-interface {v3, v1, v2}, Lcom/netflix/msl/userauth/EmailPasswordStore;->isUser(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/msl/tokens/MslUser;

    move-result-object v1

    .line 81
    if-nez v1, :cond_6

    .line 82
    new-instance v1, Lcom/netflix/msl/MslUserAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->EMAILPASSWORD_INCORRECT:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;)V

    invoke-virtual {v1, v0}, Lcom/netflix/msl/MslUserAuthException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslUserAuthException;

    move-result-object v0

    throw v0

    .line 85
    :cond_6
    iget-object v0, p0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationFactory;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationFactory;->getScheme()Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/tokens/MslUser;Lcom/netflix/msl/userauth/UserAuthenticationScheme;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 86
    new-instance v0, Lcom/netflix/msl/MslUserAuthException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERAUTH_ENTITYUSER_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Authentication scheme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationFactory;->getScheme()Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not permitted for entity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslUserAuthException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslUserAuthException;

    move-result-object v0

    throw v0

    .line 89
    :cond_7
    if-eqz p4, :cond_8

    .line 90
    invoke-virtual {p4}, Lcom/netflix/msl/tokens/UserIdToken;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v0

    .line 91
    invoke-interface {v1, v0}, Lcom/netflix/msl/tokens/MslUser;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 92
    new-instance v2, Lcom/netflix/msl/MslUserAuthException;

    sget-object v3, Lcom/netflix/msl/MslError;->USERIDTOKEN_USERAUTH_DATA_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uad user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "; uit user "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_8
    return-object v1
.end method

.method public createData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/userauth/UserAuthenticationData;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;

    invoke-direct {v0, p3}, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;-><init>(Lcom/netflix/msl/io/MslObject;)V

    return-object v0
.end method
