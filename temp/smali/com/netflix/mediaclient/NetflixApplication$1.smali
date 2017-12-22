.class Lcom/netflix/mediaclient/NetflixApplication$1;
.super Ljava/lang/Object;
.source "NetflixApplication.java"

# interfaces
.implements Lcom/netflix/mediaclient/common/NetflixCommon$Host;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/NetflixApplication;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/NetflixApplication;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication$1;->this$0:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public leaveBreadcrumb(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    invoke-static {p1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public reportException(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 203
    invoke-static {p1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    .line 204
    return-void
.end method
