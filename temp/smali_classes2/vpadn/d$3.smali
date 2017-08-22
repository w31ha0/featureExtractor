.class Lvpadn/d$3;
.super Ljava/lang/Object;
.source "CordovaChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/d;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lvpadn/d;


# direct methods
.method constructor <init>(Lvpadn/d;Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lvpadn/d$3;->b:Lvpadn/d;

    iput-object p2, p0, Lvpadn/d$3;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 128
    iget-object v0, p0, Lvpadn/d$3;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 129
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
