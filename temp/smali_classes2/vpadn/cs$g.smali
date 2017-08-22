.class Lvpadn/cs$g;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 1217
    iput-object p1, p0, Lvpadn/cs$g;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lvpadn/cs$g;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->L(Lvpadn/cs;)V

    .line 1221
    return-void
.end method
