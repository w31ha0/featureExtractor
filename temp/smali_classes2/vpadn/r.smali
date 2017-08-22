.class public Lvpadn/r;
.super Ljava/lang/Object;
.source "CordovaPlugin.java"


# static fields
.field static final synthetic f:Z


# instance fields
.field public cordova:Lvpadn/q;

.field public id:Ljava/lang/String;

.field public webView:Lvpadn/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lvpadn/r;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lvpadn/r;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Lvpadn/p;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1, v0, p3}, Lvpadn/r;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lvpadn/c;

    invoke-direct {v0, p2}, Lvpadn/c;-><init>(Lorg/json/JSONArray;)V

    .line 82
    invoke-virtual {p0, p1, v0, p3}, Lvpadn/r;->execute(Ljava/lang/String;Lvpadn/c;Lvpadn/p;)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/String;Lvpadn/c;Lvpadn/p;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lvpadn/q;Lvpadn/f;)V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lvpadn/r;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lvpadn/r;->cordova:Lvpadn/q;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lvpadn/r;->cordova:Lvpadn/q;

    .line 44
    iput-object p2, p0, Lvpadn/r;->webView:Lvpadn/f;

    .line 45
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public onPause(Z)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onReset()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public onResume(Z)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method
