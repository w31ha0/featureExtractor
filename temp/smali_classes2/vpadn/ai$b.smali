.class public Lvpadn/ai$b;
.super Ljava/lang/Object;
.source "VponNativeAdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lvpadn/ai;

.field private b:Landroid/view/View;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvpadn/ai;Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lvpadn/ai$b;->a:Lvpadn/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p2, p0, Lvpadn/ai$b;->b:Landroid/view/View;

    .line 108
    iput-object p3, p0, Lvpadn/ai$b;->c:Ljava/util/List;

    .line 109
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lvpadn/ai$b;->b:Landroid/view/View;

    return-object v0
.end method

.method b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lvpadn/ai$b;->c:Ljava/util/List;

    return-object v0
.end method
