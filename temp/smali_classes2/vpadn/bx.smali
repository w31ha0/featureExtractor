.class public Lvpadn/bx;
.super Lvpadn/bu;
.source "BufferingCloseTrackingCommandOneStatus.java"


# instance fields
.field private a:Lvpadn/cs;


# direct methods
.method public constructor <init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvpadn/cs;",
            "Landroid/app/Activity;",
            "Lvpadn/cq;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lvpadn/bu;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/List;)V

    .line 23
    iput-object p1, p0, Lvpadn/bx;->a:Lvpadn/cs;

    .line 24
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lvpadn/bx;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->c()V

    .line 29
    return-void
.end method
