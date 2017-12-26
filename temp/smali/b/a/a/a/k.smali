.class public interface abstract Lb/a/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Lb/a/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    new-instance v0, Lb/a/a/a/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/a/a/m;-><init>(Lb/a/a/a/l;)V

    sput-object v0, Lb/a/a/a/k;->d:Lb/a/a/a/k;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Exception;)V
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
