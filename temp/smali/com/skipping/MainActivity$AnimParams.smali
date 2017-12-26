.class Lcom/skipping/MainActivity$AnimParams;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skipping/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimParams"
.end annotation


# instance fields
.field bottom:I

.field left:I

.field right:I

.field top:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method init(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 789
    iput p1, p0, Lcom/skipping/MainActivity$AnimParams;->left:I

    .line 790
    iput p2, p0, Lcom/skipping/MainActivity$AnimParams;->top:I

    .line 791
    iput p3, p0, Lcom/skipping/MainActivity$AnimParams;->right:I

    .line 792
    iput p4, p0, Lcom/skipping/MainActivity$AnimParams;->bottom:I

    .line 793
    return-void
.end method
