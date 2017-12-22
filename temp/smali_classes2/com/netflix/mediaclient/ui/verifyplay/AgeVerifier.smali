.class public Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;
.super Ljava/lang/Object;
.source "AgeVerifier.java"


# static fields
.field public static final FORCE_AGE_VERIFY:Z = false

.field public static final TAG:Ljava/lang/String; = "nf_age"

.field private static sAgeVerifyInstance:Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;->sAgeVerifyInstance:Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;->sAgeVerifyInstance:Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;

    return-object v0
.end method

.method private shouldHandleNewRequest(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Z
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x1

    .line 48
    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->MDX:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :cond_0
    return v0
.end method


# virtual methods
.method public verify(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;->shouldHandleNewRequest(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-static {p2}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->createAgeDialog(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->setAgeVerifierCallback(Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V

    .line 35
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "frag_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
