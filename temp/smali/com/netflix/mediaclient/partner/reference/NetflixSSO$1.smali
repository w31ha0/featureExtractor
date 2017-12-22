.class Lcom/netflix/mediaclient/partner/reference/NetflixSSO$1;
.super Ljava/lang/Object;
.source "NetflixSSO.java"

# interfaces
.implements Lcom/netflix/mediaclient/partner/ResponseListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/partner/reference/NetflixSSO;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/partner/reference/NetflixSSO;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/netflix/mediaclient/partner/reference/NetflixSSO$1;->this$0:Lcom/netflix/mediaclient/partner/reference/NetflixSSO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseReceived(Lcom/netflix/mediaclient/partner/Response;)V
    .locals 2

    .prologue
    .line 58
    invoke-interface {p1}, Lcom/netflix/mediaclient/partner/Response;->getResponder()Landroid/content/ComponentName;

    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "getExternalSsoService did not set component name!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/partner/reference/NetflixSSO$1;->this$0:Lcom/netflix/mediaclient/partner/reference/NetflixSSO;

    invoke-static {v1}, Lcom/netflix/mediaclient/partner/reference/NetflixSSO;->access$000(Lcom/netflix/mediaclient/partner/reference/NetflixSSO;)Lcom/netflix/mediaclient/partner/Partner;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/partner/Partner;->setComponentName(Landroid/content/ComponentName;)V

    goto :goto_0
.end method
