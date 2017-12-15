.class final Lcom/flurry/android/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/flurry/android/l;


# direct methods
.method constructor <init>(Lcom/flurry/android/l;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/flurry/android/an;->b:Lcom/flurry/android/l;

    iput-object p2, p0, Lcom/flurry/android/an;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 333
    new-instance v0, Lcom/flurry/android/ag;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/flurry/android/ag;-><init>(I)V

    .line 334
    iget-object v1, p0, Lcom/flurry/android/an;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/ag;->a(Ljava/lang/String;)V

    .line 335
    return-void
.end method
