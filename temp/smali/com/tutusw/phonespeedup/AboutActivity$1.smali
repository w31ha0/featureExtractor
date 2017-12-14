.class Lcom/tutusw/phonespeedup/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutusw/phonespeedup/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/AboutActivity;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/AboutActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "selectedItemView"    # Landroid/view/View;
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
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/high16 v4, -0x1000000

    const/4 v3, -0x1

    const-string v7, "color_freqtext"

    const-string v6, "theme"

    const-string v5, "color_background"

    .line 46
    packed-switch p3, :pswitch_data_0

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "theme"

    iget-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/AboutActivity;->themes:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "theme"

    iget-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/AboutActivity;->themes:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_background"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 55
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_header"

    const v2, -0xcccccd

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 56
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_text"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 57
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_headertext"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 58
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_freqtext"

    const v1, -0xff0100

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 59
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_metertext"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 60
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "drawable_seekbar"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "theme"

    iget-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/AboutActivity;->themes:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_background"

    const v1, -0xcccccd

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 65
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_header"

    const v2, -0xcccccd

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 66
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_text"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 67
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_headertext"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 68
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_freqtext"

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 69
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_metertext"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 70
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "drawable_seekbar"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 73
    :pswitch_3
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "theme"

    iget-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/AboutActivity;->themes:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_background"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 75
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_header"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 76
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_text"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 77
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_headertext"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 78
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_freqtext"

    invoke-interface {v0, v7, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 79
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_metertext"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 80
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "drawable_seekbar"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 83
    :pswitch_4
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "theme"

    iget-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/AboutActivity;->themes:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_background"

    const v1, -0x8f7f70

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_header"

    const v2, -0x8f7f70

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 86
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_text"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_headertext"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 88
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_freqtext"

    const v1, -0xff0100

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 89
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_metertext"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 90
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "drawable_seekbar"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 93
    :pswitch_5
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "theme"

    iget-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/AboutActivity;->themes:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_background"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_header"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 96
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_text"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 97
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_headertext"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 98
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_freqtext"

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 99
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_metertext"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 100
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "drawable_seekbar"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 103
    :pswitch_6
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "theme"

    iget-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/AboutActivity;->themes:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_background"

    const v1, -0x5b39c7

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 105
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_header"

    const v2, -0x5b39c7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 106
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_text"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 107
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_headertext"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 108
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_freqtext"

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 109
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_metertext"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 110
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "drawable_seekbar"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 113
    :pswitch_7
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "theme"

    iget-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/AboutActivity;->themes:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_background"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 115
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_header"

    const v2, -0xcccccd

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 116
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_text"

    const v2, -0xff0001

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 117
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_headertext"

    const v2, -0xff0001

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 118
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_freqtext"

    const v1, -0xff0001

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 119
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_metertext"

    const v2, -0xff0001

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 120
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "drawable_seekbar"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 123
    :pswitch_8
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "theme"

    iget-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/AboutActivity;->themes:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_background"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 125
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_header"

    const v2, -0xcccccd

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 126
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_text"

    const/high16 v2, -0x200000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 127
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_headertext"

    const/high16 v2, -0x200000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 128
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_freqtext"

    const/high16 v1, -0x200000

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 129
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_metertext"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "drawable_seekbar"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 133
    :pswitch_9
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "theme"

    iget-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/AboutActivity;->themes:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_background"

    const v1, -0xffff01

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 135
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_header"

    const v2, -0xffff01

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 136
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_text"

    const/16 v2, -0x100

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 137
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_headertext"

    const/16 v2, -0x100

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 138
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_freqtext"

    const/high16 v1, -0x200000

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 139
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_metertext"

    const/16 v2, -0x100

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 140
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "drawable_seekbar"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 143
    :pswitch_a
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "theme"

    iget-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/AboutActivity;->themes:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_background"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 145
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_background"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 146
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_text"

    const v2, -0xff0100

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 147
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_headertext"

    const v2, -0xff0100

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 148
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_freqtext"

    const v1, -0xff0100

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 149
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_metertext"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 150
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity$1;->this$0:Lcom/tutusw/phonespeedup/AboutActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "drawable_seekbar"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
