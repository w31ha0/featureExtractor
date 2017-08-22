.class Lcom/novel/reader/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/MainActivity;->setAboutUsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/MainActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/MainActivity;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/novel/reader/MainActivity$10;->this$0:Lcom/novel/reader/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 526
    return-void
.end method
