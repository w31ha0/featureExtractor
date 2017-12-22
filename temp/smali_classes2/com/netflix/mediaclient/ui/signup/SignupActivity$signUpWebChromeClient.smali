.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$signUpWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SignupActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$signUpWebChromeClient;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Lcom/netflix/mediaclient/ui/signup/SignupActivity$1;)V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$signUpWebChromeClient;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x1

    return v0
.end method
