.class Lvpadn/d$8;
.super Ljava/lang/Object;
.source "CordovaChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/d;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/webkit/JsPromptResult;

.field final synthetic c:Lvpadn/d;


# direct methods
.method constructor <init>(Lvpadn/d;Landroid/widget/EditText;Landroid/webkit/JsPromptResult;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lvpadn/d$8;->c:Lvpadn/d;

    iput-object p2, p0, Lvpadn/d$8;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lvpadn/d$8;->b:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lvpadn/d$8;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lvpadn/d$8;->b:Landroid/webkit/JsPromptResult;

    invoke-virtual {v1, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 262
    return-void
.end method
