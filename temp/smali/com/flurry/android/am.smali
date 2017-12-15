.class final Lcom/flurry/android/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/flurry/android/l;


# direct methods
.method constructor <init>(Lcom/flurry/android/l;I)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/flurry/android/am;->b:Lcom/flurry/android/l;

    iput p2, p0, Lcom/flurry/android/am;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 707
    new-instance v0, Lcom/flurry/android/ag;

    iget v1, p0, Lcom/flurry/android/am;->a:I

    invoke-direct {v0, v1}, Lcom/flurry/android/ag;-><init>(I)V

    .line 708
    return-void
.end method
