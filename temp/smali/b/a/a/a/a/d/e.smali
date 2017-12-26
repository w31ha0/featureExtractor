.class Lb/a/a/a/a/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lb/a/a/a/a/d/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/a/a/d/d;


# direct methods
.method constructor <init>(Lb/a/a/a/a/d/d;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lb/a/a/a/a/d/e;->a:Lb/a/a/a/a/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/a/d/f;Lb/a/a/a/a/d/f;)I
    .locals 4

    .prologue
    .line 188
    iget-wide v0, p1, Lb/a/a/a/a/d/f;->b:J

    iget-wide v2, p2, Lb/a/a/a/a/d/f;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 185
    check-cast p1, Lb/a/a/a/a/d/f;

    check-cast p2, Lb/a/a/a/a/d/f;

    invoke-virtual {p0, p1, p2}, Lb/a/a/a/a/d/e;->a(Lb/a/a/a/a/d/f;Lb/a/a/a/a/d/f;)I

    move-result v0

    return v0
.end method
