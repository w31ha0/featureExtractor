.class Lvpadn/cs$f$1;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs$f;


# direct methods
.method constructor <init>(Lvpadn/cs$f;)V
    .locals 0

    .prologue
    .line 2898
    iput-object p1, p0, Lvpadn/cs$f$1;->a:Lvpadn/cs$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2902
    :try_start_0
    iget-object v0, p0, Lvpadn/cs$f$1;->a:Lvpadn/cs$f;

    iget-object v0, v0, Lvpadn/cs$f;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->U(Lvpadn/cs;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2905
    :goto_0
    return-void

    .line 2903
    :catch_0
    move-exception v0

    goto :goto_0
.end method
