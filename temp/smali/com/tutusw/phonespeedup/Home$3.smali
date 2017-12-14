.class Lcom/tutusw/phonespeedup/Home$3;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutusw/phonespeedup/Home;->showChangeWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/Home;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/Home;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutusw/phonespeedup/Home$3;->this$0:Lcom/tutusw/phonespeedup/Home;

    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 853
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home$3;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "firstLaunch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 854
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home$3;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 855
    return-void
.end method
