.class Lcom/skipping/LevelActivity$1;
.super Ljava/lang/Object;
.source "LevelActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/LevelActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/LevelActivity;


# direct methods
.method constructor <init>(Lcom/skipping/LevelActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/LevelActivity$1;->this$0:Lcom/skipping/LevelActivity;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sput p3, Lcom/skipping/LevelActivity;->selected_level:I

    .line 185
    iget-object v1, p0, Lcom/skipping/LevelActivity$1;->this$0:Lcom/skipping/LevelActivity;

    iget-object v1, v1, Lcom/skipping/LevelActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "selected_level"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    iget-object v1, p0, Lcom/skipping/LevelActivity$1;->this$0:Lcom/skipping/LevelActivity;

    iget-object v1, v1, Lcom/skipping/LevelActivity;->dataAdapter:Lcom/skipping/LevelArrayAdapter;

    invoke-virtual {v1}, Lcom/skipping/LevelArrayAdapter;->notifyDataSetChanged()V

    .line 191
    return-void
.end method
