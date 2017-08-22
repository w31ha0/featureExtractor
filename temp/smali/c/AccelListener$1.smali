.class Lc/AccelListener$1;
.super Ljava/lang/Object;
.source "AccelListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/AccelListener;->a()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/AccelListener;


# direct methods
.method constructor <init>(Lc/AccelListener;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lc/AccelListener$1;->a:Lc/AccelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lc/AccelListener$1;->a:Lc/AccelListener;

    invoke-static {v0}, Lc/AccelListener;->a(Lc/AccelListener;)V

    .line 161
    return-void
.end method
