.class public Lcom/tutusw/phonespeedup/ProfilesActivity;
.super Landroid/app/ListActivity;
.source "ProfilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;,
        Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;

.field addProfile:Landroid/widget/LinearLayout;

.field addText:Landroid/widget/TextView;

.field clicker:Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;

.field cursor:Landroid/database/Cursor;

.field private db:Lcom/tutusw/phonespeedup/DBHelper;

.field editor:Landroid/content/SharedPreferences$Editor;

.field enableText:Landroid/widget/TextView;

.field inflater:Landroid/view/LayoutInflater;

.field notifyEnable:Landroid/widget/CheckBox;

.field notifyText:Landroid/widget/TextView;

.field profilesEnable:Landroid/widget/CheckBox;

.field settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 32
    new-instance v0, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;-><init>(Lcom/tutusw/phonespeedup/ProfilesActivity;Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->clicker:Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/tutusw/phonespeedup/ProfilesActivity;)Lcom/tutusw/phonespeedup/DBHelper;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->db:Lcom/tutusw/phonespeedup/DBHelper;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tutusw/phonespeedup/ProfilesActivity;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/ProfilesActivity;->update()V

    return-void
.end method

.method static synthetic access$2(Lcom/tutusw/phonespeedup/ProfilesActivity;II)V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Lcom/tutusw/phonespeedup/ProfilesActivity;->setBounds(II)V

    return-void
.end method

.method static synthetic access$3(Lcom/tutusw/phonespeedup/ProfilesActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/ProfilesActivity;->setGovernor(Ljava/lang/String;)V

    return-void
.end method

.method private setBounds(II)V
    .locals 2
    .param p1, "f"    # I
    .param p2, "g"    # I

    .prologue
    const-string v0, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    const-string v0, "echo "

    .line 224
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 225
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setGovernor(Ljava/lang/String;)V
    .locals 2
    .param p1, "set"    # Ljava/lang/String;

    .prologue
    const-string v0, "echo "

    const-string v0, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    .line 240
    if-eqz p1, :cond_0

    .line 241
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private update()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->db:Lcom/tutusw/phonespeedup/DBHelper;

    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/DBHelper;->getAllProfiles()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->cursor:Landroid/database/Cursor;

    .line 217
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->adapter:Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Speedup.intent.action.refreshservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/ProfilesActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/ProfilesActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/ProfilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->profilesEnable:Landroid/widget/CheckBox;

    .line 43
    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/ProfilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->notifyEnable:Landroid/widget/CheckBox;

    .line 44
    const v0, 0x7f080090

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/ProfilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->addProfile:Landroid/widget/LinearLayout;

    .line 45
    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/ProfilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->addText:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/ProfilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->enableText:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/ProfilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->notifyText:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->profilesEnable:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->clicker:Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->notifyEnable:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->clicker:Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->addProfile:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->clicker:Lcom/tutusw/phonespeedup/ProfilesActivity$Clicker;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v0, Lcom/tutusw/phonespeedup/DBHelper;

    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/ProfilesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->db:Lcom/tutusw/phonespeedup/DBHelper;

    .line 54
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->db:Lcom/tutusw/phonespeedup/DBHelper;

    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/DBHelper;->getAllProfiles()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->cursor:Landroid/database/Cursor;

    .line 55
    new-instance v0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->cursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, p0, v1}, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;-><init>(Lcom/tutusw/phonespeedup/ProfilesActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->adapter:Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;

    .line 57
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->adapter:Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/ProfilesActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    const-string v0, "Speedup"

    invoke-virtual {p0, v0, v3}, Lcom/tutusw/phonespeedup/ProfilesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->settings:Landroid/content/SharedPreferences;

    .line 60
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 62
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->profilesEnable:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->settings:Landroid/content/SharedPreferences;

    const-string v2, "profilesOn"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->notifyEnable:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->settings:Landroid/content/SharedPreferences;

    const-string v2, "profileNotifications"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 67
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 252
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 253
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity;->db:Lcom/tutusw/phonespeedup/DBHelper;

    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/DBHelper;->close()V

    .line 254
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 71
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 212
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/ProfilesActivity;->update()V

    .line 213
    return-void
.end method
