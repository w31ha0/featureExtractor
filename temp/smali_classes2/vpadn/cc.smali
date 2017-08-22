.class public Lvpadn/cc;
.super Lvpadn/bu;
.source "CloseTrackingCommandOneStatus.java"


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
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lvpadn/bu;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/List;)V

    .line 19
    iput-object p1, p0, Lvpadn/cc;->a:Lvpadn/cs;

    .line 20
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lvpadn/cc;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->b()V

    .line 25
    return-void
.end method
