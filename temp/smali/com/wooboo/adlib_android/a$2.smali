.class final Lcom/wooboo/adlib_android/a$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/wooboo/adlib_android/a;


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wooboo/adlib_android/a$2;->a:Lcom/wooboo/adlib_android/a;

    .line 673
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/wooboo/adlib_android/a$2;->a:Lcom/wooboo/adlib_android/a;

    invoke-static {v0}, Lcom/wooboo/adlib_android/a;->c(Lcom/wooboo/adlib_android/a;)Lcom/wooboo/adlib_android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/c;->a()V

    .line 676
    iget-object v0, p0, Lcom/wooboo/adlib_android/a$2;->a:Lcom/wooboo/adlib_android/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wooboo/adlib_android/a;->a(Lcom/wooboo/adlib_android/a;Z)V

    .line 677
    return-void
.end method
