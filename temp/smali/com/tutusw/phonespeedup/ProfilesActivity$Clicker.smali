.class Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;
.super Ljava/lang/Object;
.source "ProfilesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/ProfilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Clicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;


# direct methods
.method private constructor <init>(Lcom/tutusw/phonespeedup/ProfilesActivity;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tutusw/phonespeedup/ProfilesActivity;Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;-><init>(Lcom/tutusw/phonespeedup/ProfilesActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    const-string v6, "Speedup.intent.action.refreshservice"

    const-string v3, "profilesOn"

    .line 182
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesActivity;->profilesEnable:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesActivity;->settings:Landroid/content/SharedPreferences;

    const-string v2, "profilesOn"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "profilesOn"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 185
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/ProfilesActivity;->settings:Landroid/content/SharedPreferences;

    const-string v3, "max"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    iget-object v3, v3, Lcom/tutusw/phonespeedup/ProfilesActivity;->settings:Landroid/content/SharedPreferences;

    const-string v4, "min"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/tutusw/phonespeedup/ProfilesActivity;->access$2(Lcom/tutusw/phonespeedup/ProfilesActivity;II)V

    .line 187
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/ProfilesActivity;->settings:Landroid/content/SharedPreferences;

    const-string v3, "stringGovernor"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tutusw/phonespeedup/ProfilesActivity;->access$3(Lcom/tutusw/phonespeedup/ProfilesActivity;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "Speedup.intent.action.refreshservice"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tutusw/phonespeedup/ProfilesActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "profilesOn"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    invoke-virtual {v3}, Lcom/tutusw/phonespeedup/ProfilesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/tutusw/phonespeedup/ProfilesService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/tutusw/phonespeedup/ProfilesActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 194
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "Speedup.intent.action.refreshservice"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tutusw/phonespeedup/ProfilesActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesActivity;->notifyEnable:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_4

    .line 198
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "profileNotifications"

    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    iget-object v3, v3, Lcom/tutusw/phonespeedup/ProfilesActivity;->settings:Landroid/content/SharedPreferences;

    const-string v4, "profileNotifications"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    :goto_1
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 199
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 200
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "Speedup.intent.action.refreshservice"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tutusw/phonespeedup/ProfilesActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    move v3, v8

    .line 198
    goto :goto_1

    .line 202
    :cond_4
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesActivity;->addProfile:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_0

    .line 203
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    invoke-virtual {v1}, Lcom/tutusw/phonespeedup/ProfilesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tutusw/phonespeedup/ProfileEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    invoke-virtual {v1, v0, v5}, Lcom/tutusw/phonespeedup/ProfilesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
