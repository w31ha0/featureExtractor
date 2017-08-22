.class Lvpadn/cs$4;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lvpadn/bv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs;->ag()V
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
    .line 1722
    iput-object p1, p0, Lvpadn/cs$4;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lvpadn/bv;)V
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lvpadn/cs$4;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->N(Lvpadn/cs;)Lvpadn/by;

    move-result-object v0

    invoke-virtual {p1, v0}, Lvpadn/bv;->setCommand(Lvpadn/by;)V

    .line 1726
    iget-object v0, p0, Lvpadn/cs$4;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->O(Lvpadn/cs;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lvpadn/bv;->setButtonIcon(Ljava/lang/String;)V

    .line 1727
    return-void
.end method
