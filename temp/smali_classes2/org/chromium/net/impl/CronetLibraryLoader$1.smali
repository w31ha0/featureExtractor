.class final Lorg/chromium/net/impl/CronetLibraryLoader$1;
.super Ljava/lang/Object;
.source "CronetLibraryLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lorg/chromium/net/impl/CronetLibraryLoader$1;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/chromium/net/impl/CronetLibraryLoader$1;->val$applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetLibraryLoader;->ensureInitializedOnMainThread(Landroid/content/Context;)V

    .line 64
    return-void
.end method
