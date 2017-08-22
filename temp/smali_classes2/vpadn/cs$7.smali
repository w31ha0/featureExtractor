.class Lvpadn/cs$7;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lvpadn/by;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 1911
    iput-object p1, p0, Lvpadn/cs$7;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .prologue
    .line 1914
    iget-object v0, p0, Lvpadn/cs$7;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->a(Lvpadn/cs;)Lvpadn/cv;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cv;->start()V

    .line 1915
    return-void
.end method
