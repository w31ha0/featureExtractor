.class public Lcom/tutusw/phonespeedup/AboutActivity;
.super Landroid/app/Activity;
.source "AboutActivity.java"


# instance fields
.field chooseTheme:Landroid/widget/Spinner;

.field editor:Landroid/content/SharedPreferences$Editor;

.field settings:Landroid/content/SharedPreferences;

.field themeSet:Z

.field themes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u9ed8\u8ba4"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "\u6df1\u9ed1\u8272"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u7070\u8272"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u7b80\u6d01"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u91d1\u5c5e"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u591c\u665a"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u751c\u9178\u5976"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u975b\u9752"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Droid"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BIOS"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u7ec8\u7aef"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tutusw/phonespeedup/AboutActivity;->themes:[Ljava/lang/String;

    .line 22
    iput-boolean v3, p0, Lcom/tutusw/phonespeedup/AboutActivity;->themeSet:Z

    .line 16
    return-void
.end method

.method private getIndex(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "f"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/String;

    .prologue
    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    .line 174
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 170
    :cond_0
    aget-object v1, p2, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v0

    .line 171
    goto :goto_1

    .line 169
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/AboutActivity;->requestWindowFeature(I)Z

    .line 30
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/AboutActivity;->setContentView(I)V

    .line 32
    const/high16 v1, 0x7f080000

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity;->chooseTheme:Landroid/widget/Spinner;

    .line 33
    const-string v1, "Speedup"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/tutusw/phonespeedup/AboutActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity;->settings:Landroid/content/SharedPreferences;

    .line 34
    iget-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 36
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 37
    const v1, 0x1090008

    .line 38
    iget-object v2, p0, Lcom/tutusw/phonespeedup/AboutActivity;->themes:[Ljava/lang/String;

    .line 36
    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 39
    .local v0, "spinnerArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 40
    iget-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity;->chooseTheme:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 42
    iget-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity;->chooseTheme:Landroid/widget/Spinner;

    new-instance v2, Lcom/tutusw/phonespeedup/AboutActivity$1;

    invoke-direct {v2, p0}, Lcom/tutusw/phonespeedup/AboutActivity$1;-><init>(Lcom/tutusw/phonespeedup/AboutActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 164
    iget-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity;->chooseTheme:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/tutusw/phonespeedup/AboutActivity;->settings:Landroid/content/SharedPreferences;

    const-string v3, "theme"

    const-string v4, "\u9ed8\u8ba4"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tutusw/phonespeedup/AboutActivity;->themes:[Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/tutusw/phonespeedup/AboutActivity;->getIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 166
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 185
    const-string v0, "\u8bbe\u5907\u7c7b\u578b\u9009\u9879"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    .line 191
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v4

    .line 202
    :goto_0
    return v1

    .line 194
    :pswitch_0
    iget-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "androidVersion"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 195
    iget-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "hasRoot"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 196
    iget-object v1, p0, Lcom/tutusw/phonespeedup/AboutActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/AboutActivity;->finish()V

    .line 200
    const/4 v1, 0x1

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
