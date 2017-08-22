.class public Lc/ExposedJsApi;
.super Ljava/lang/Object;
.source "ExposedJsApi.java"


# instance fields
.field private a:Lvpadn/v;

.field private b:Lvpadn/n;


# direct methods
.method public constructor <init>(Lvpadn/v;Lvpadn/n;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lc/ExposedJsApi;->a:Lvpadn/v;

    .line 39
    iput-object p2, p0, Lc/ExposedJsApi;->b:Lvpadn/n;

    .line 40
    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lc/ExposedJsApi;->b:Lvpadn/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/n;->a(Z)V

    .line 46
    :try_start_0
    iget-object v0, p0, Lc/ExposedJsApi;->a:Lvpadn/v;

    invoke-virtual {v0, p1, p2, p3, p4}, Lvpadn/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    const-string v0, ""

    .line 49
    iget-object v0, p0, Lc/ExposedJsApi;->b:Lvpadn/n;

    invoke-virtual {v0}, Lvpadn/n;->b()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 53
    iget-object v1, p0, Lc/ExposedJsApi;->b:Lvpadn/n;

    invoke-virtual {v1, v2}, Lvpadn/n;->a(Z)V

    .line 51
    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/ExposedJsApi;->b:Lvpadn/n;

    invoke-virtual {v1, v2}, Lvpadn/n;->a(Z)V

    throw v0
.end method

.method public retrieveJsMessages()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lc/ExposedJsApi;->b:Lvpadn/n;

    invoke-virtual {v0}, Lvpadn/n;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setNativeToJsBridgeMode(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lc/ExposedJsApi;->b:Lvpadn/n;

    invoke-virtual {v0, p1}, Lvpadn/n;->a(I)V

    .line 60
    return-void
.end method
