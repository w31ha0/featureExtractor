.class Lcom/android/main/TANCActivity$TANCButtonListener;
.super Ljava/lang/Object;
.source "TANCActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/main/TANCActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TANCButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/main/TANCActivity;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/main/TANCActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/main/TANCActivity$TANCButtonListener;->this$0:Lcom/android/main/TANCActivity;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p2, p0, Lcom/android/main/TANCActivity$TANCButtonListener;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 143
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/main/TANCActivity$TANCButtonListener;->this$0:Lcom/android/main/TANCActivity;

    iget-object v1, p0, Lcom/android/main/TANCActivity$TANCButtonListener;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/main/TANCActivity;->access$0(Lcom/android/main/TANCActivity;Ljava/lang/String;)V

    .line 148
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 149
    iget-object v0, p0, Lcom/android/main/TANCActivity$TANCButtonListener;->this$0:Lcom/android/main/TANCActivity;

    invoke-virtual {v0}, Lcom/android/main/TANCActivity;->finish()V

    .line 150
    return-void
.end method
