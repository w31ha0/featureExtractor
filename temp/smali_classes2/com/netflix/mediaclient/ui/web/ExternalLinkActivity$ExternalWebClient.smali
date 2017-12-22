.class Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebClient;
.super Landroid/webkit/WebChromeClient;
.source "ExternalLinkActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebClient;->this$0:Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$1;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebClient;-><init>(Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method
