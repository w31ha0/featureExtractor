.class Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;
.super Lcom/netflix/mediaclient/service/msl/client/error/AppBootErrorDescriptor;
.source "ActionId13ErrorDescriptor.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMSLClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

.field private mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/msl/client/error/AppBootErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;->mMSLClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    .line 33
    check-cast p3, Lcom/netflix/mediaclient/service/user/UserAgent;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;)Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static build(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Ljava/lang/String;)Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;
    .locals 4

    .prologue
    .line 55
    const-string/jumbo v0, "nf_appboot_error"

    const-string/jumbo v1, "ActionID 13 Forcelogout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {p3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const v0, 0x7f090040

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 60
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor$2;-><init>()V

    .line 67
    new-instance v1, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-direct {v1, v2, p3, v3, v0}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 68
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    return-object v0
.end method


# virtual methods
.method public getBackgroundTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor$1;-><init>(Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;)V

    return-object v0
.end method
