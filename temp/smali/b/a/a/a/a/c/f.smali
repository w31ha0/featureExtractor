.class Lb/a/a/a/a/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lb/a/a/a/a/c/a;

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lb/a/a/a/a/c/a;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/a/c/a;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p1, p0, Lb/a/a/a/a/c/f;->a:Lb/a/a/a/a/c/a;

    .line 677
    iput-object p2, p0, Lb/a/a/a/a/c/f;->b:[Ljava/lang/Object;

    .line 678
    return-void
.end method
