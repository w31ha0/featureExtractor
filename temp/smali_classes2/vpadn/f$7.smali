.class Lvpadn/f$7;
.super Ljava/lang/Object;
.source "CordovaWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/f;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/f;

.field final synthetic b:Lvpadn/f;


# direct methods
.method constructor <init>(Lvpadn/f;Lvpadn/f;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lvpadn/f$7;->b:Lvpadn/f;

    iput-object p2, p0, Lvpadn/f$7;->a:Lvpadn/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lvpadn/f$7;->a:Lvpadn/f;

    iget-object v1, p0, Lvpadn/f$7;->b:Lvpadn/f;

    invoke-static {v1}, Lvpadn/f;->c(Lvpadn/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvpadn/f;->b(Ljava/lang/String;)V

    .line 625
    return-void
.end method
