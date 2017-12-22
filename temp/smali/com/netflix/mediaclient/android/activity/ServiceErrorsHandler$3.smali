.class final Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$3;
.super Ljava/lang/Object;
.source "ServiceErrorsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 253
    return-void
.end method
