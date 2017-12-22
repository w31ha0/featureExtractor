.class public Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier;
.super Ljava/lang/Object;
.source "PinAndAgeVerifier.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verifyAgeAndPinForOfflineDownload(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V
    .locals 6

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "serviceManager is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string/jumbo v1, "nf_age"

    const-string/jumbo v2, " isAgeProtected: %b, isAgeVerified: %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 57
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserAgeVerified()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 56
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserAgeVerified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier;->verifyPinToContinue(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p3}, Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;->verify(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V

    goto :goto_0
.end method

.method public static verifyAgeAndPinToPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 5

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "serviceManager is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return-void

    .line 31
    :cond_0
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, " isAgeProtected: %b, isAgeVerified: %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 32
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserAgeVerified()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 31
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserAgeVerified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    :cond_1
    invoke-static {p0, p2, p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier;->verifyPinToContinue(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V

    goto :goto_0

    .line 35
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;->verify(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V

    goto :goto_0
.end method

.method static verifyPinToContinue(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V
    .locals 2

    .prologue
    .line 68
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinProtected()Z

    move-result v1

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->verify(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "vault or vault.asset null, skipping pin and play"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
