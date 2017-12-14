.class Lcom/tutusw/phonespeedup/IntroActivity$1;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutusw/phonespeedup/IntroActivity;->showWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/IntroActivity;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/IntroActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutusw/phonespeedup/IntroActivity$1;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$1;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "firstLaunch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 249
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$1;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$1;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/IntroActivity;->access$5(Lcom/tutusw/phonespeedup/IntroActivity;)V

    .line 251
    return-void
.end method
