.class Lc/api/Plugin$1;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/api/Plugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONArray;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lc/api/Plugin;


# direct methods
.method constructor <init>(Lc/api/Plugin;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lc/api/Plugin$1;->d:Lc/api/Plugin;

    iput-object p2, p0, Lc/api/Plugin$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lc/api/Plugin$1;->b:Lorg/json/JSONArray;

    iput-object p4, p0, Lc/api/Plugin$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lc/api/Plugin$1;->d:Lc/api/Plugin;

    iget-object v1, p0, Lc/api/Plugin$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lc/api/Plugin$1;->b:Lorg/json/JSONArray;

    iget-object v3, p0, Lc/api/Plugin$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lc/api/Plugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lvpadn/w;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :goto_0
    iget-object v1, p0, Lc/api/Plugin$1;->d:Lc/api/Plugin;

    iget-object v2, p0, Lc/api/Plugin$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lc/api/Plugin;->sendPluginResult(Lvpadn/w;Ljava/lang/String;)V

    .line 84
    return-void

    .line 80
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 81
    new-instance v0, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->j:Lvpadn/w$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;Ljava/lang/String;)V

    goto :goto_0
.end method
