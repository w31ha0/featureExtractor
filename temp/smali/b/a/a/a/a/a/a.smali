.class public abstract Lb/a/a/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a/a/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/a/a/a/a/a/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lb/a/a/a/a/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/a/a/a/c",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/a/a/a/a/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/a/a/c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lb/a/a/a/a/a/a;->a:Lb/a/a/a/a/a/c;

    .line 15
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53
    :cond_0
    invoke-virtual {p0, p1, p2}, Lb/a/a/a/a/a/a;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method

.method public final declared-synchronized a(Landroid/content/Context;Lb/a/a/a/a/a/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lb/a/a/a/a/a/d",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lb/a/a/a/a/a/a;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lb/a/a/a/a/a/a;->a:Lb/a/a/a/a/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/a/a/a/a;->a:Lb/a/a/a/a/a/c;

    invoke-interface {v0, p1, p2}, Lb/a/a/a/a/a/c;->a(Landroid/content/Context;Lb/a/a/a/a/a/d;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    :goto_0
    invoke-direct {p0, p1, v0}, Lb/a/a/a/a/a/a;->b(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    monitor-exit p0

    return-object v0

    .line 22
    :cond_1
    :try_start_1
    invoke-interface {p2, p1}, Lb/a/a/a/a/a/d;->c(Landroid/content/Context;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation
.end method
