.class public Llightning/thunder/cleaner/Fragments/CPUCooler;
.super Landroidx/fragment/app/Fragment;
.source "CPUCooler.java"


# static fields
.field public static apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llightning/thunder/cleaner/Classes/Apps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field apps2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llightning/thunder/cleaner/Classes/Apps;",
            ">;"
        }
    .end annotation
.end field

.field batteryReceiver:Landroid/content/BroadcastReceiver;

.field batterytemp:Landroid/widget/TextView;

.field check:I

.field coolbutton:Landroid/widget/ImageView;

.field mAdapter:Llightning/thunder/cleaner/RecyclerAdapter;

.field nooverheating:Landroid/widget/TextView;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field showmain:Landroid/widget/TextView;

.field showsec:Landroid/widget/TextView;

.field temp:F

.field tempimg:Landroid/widget/ImageView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->check:I

    .line 57
    new-instance v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Fragments/CPUCooler$1;-><init>(Llightning/thunder/cleaner/Fragments/CPUCooler;)V

    iput-object v0, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->batteryReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public getAllICONS()V
    .locals 16

    move-object/from16 v1, p0

    .line 236
    invoke-virtual/range {p0 .. p0}, Llightning/thunder/cleaner/Fragments/CPUCooler;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    .line 238
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 242
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 244
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "packageName-->"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "fast.cleaner.saver"

    .line 247
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 253
    :try_start_0
    invoke-virtual {v2, v7, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    new-instance v0, Llightning/thunder/cleaner/Classes/Apps;

    invoke-direct {v0}, Llightning/thunder/cleaner/Classes/Apps;-><init>()V

    .line 258
    new-instance v9, Ljava/io/File;

    invoke-virtual {v2, v7, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    const-string v11, "SIZE"

    .line 261
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/32 v13, 0xf4240

    move v15, v6

    :try_start_1
    div-long v5, v9, v13

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v9, v13

    const-wide/16 v11, 0x14

    add-long/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Llightning/thunder/cleaner/Classes/Apps;->setSize(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v2, v7, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 265
    invoke-virtual/range {p0 .. p0}, Llightning/thunder/cleaner/Fragments/CPUCooler;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v9, v15

    :try_start_2
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Llightning/thunder/cleaner/Classes/Apps;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Llightning/thunder/cleaner/Fragments/CPUCooler;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    const-string v10, "ico-->"

    .line 267
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-nez v5, :cond_1

    .line 272
    iget v5, v1, Llightning/thunder/cleaner/Fragments/CPUCooler;->check:I

    const/4 v8, 0x5

    if-gt v5, v8, :cond_0

    .line 273
    iget v5, v1, Llightning/thunder/cleaner/Fragments/CPUCooler;->check:I

    add-int/2addr v5, v6

    iput v5, v1, Llightning/thunder/cleaner/Fragments/CPUCooler;->check:I

    .line 274
    sget-object v5, Llightning/thunder/cleaner/Fragments/CPUCooler;->apps:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 276
    :cond_0
    invoke-virtual/range {p0 .. p0}, Llightning/thunder/cleaner/Fragments/CPUCooler;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v5, v1, Llightning/thunder/cleaner/Fragments/CPUCooler;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_4

    .line 282
    :cond_1
    :goto_1
    iget-object v0, v1, Llightning/thunder/cleaner/Fragments/CPUCooler;->mAdapter:Llightning/thunder/cleaner/RecyclerAdapter;

    invoke-virtual {v0}, Llightning/thunder/cleaner/RecyclerAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move v9, v15

    goto :goto_2

    :catch_2
    move-exception v0

    move v9, v6

    .line 286
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find icon for package \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ERROR"

    .line 286
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    move v9, v6

    :goto_3
    add-int/lit8 v6, v9, 0x1

    goto/16 :goto_0

    .line 297
    :cond_3
    :goto_4
    sget-object v0, Llightning/thunder/cleaner/Fragments/CPUCooler;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    .line 298
    new-instance v0, Llightning/thunder/cleaner/RecyclerAdapter;

    sget-object v2, Llightning/thunder/cleaner/Fragments/CPUCooler;->apps:Ljava/util/List;

    invoke-direct {v0, v2}, Llightning/thunder/cleaner/RecyclerAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, v1, Llightning/thunder/cleaner/Fragments/CPUCooler;->mAdapter:Llightning/thunder/cleaner/RecyclerAdapter;

    .line 299
    invoke-virtual {v0}, Llightning/thunder/cleaner/RecyclerAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method public getUserVisibleHint()Z
    .locals 2

    .line 309
    sget-object v0, Llightning/thunder/cleaner/MainActivity;->name:Landroid/widget/TextView;

    const-string v1, "CPU Cooler"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/CPUCooler;->getUserVisibleHint()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b001f

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->view:Landroid/view/View;

    .line 177
    :try_start_0
    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/CPUCooler;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->batteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->view:Landroid/view/View;

    const p2, 0x7f0800e1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 181
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->view:Landroid/view/View;

    const p2, 0x7f08012a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->tempimg:Landroid/widget/ImageView;

    .line 182
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->view:Landroid/view/View;

    const p2, 0x7f08010d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->showmain:Landroid/widget/TextView;

    .line 183
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->view:Landroid/view/View;

    const p2, 0x7f08010e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->showsec:Landroid/widget/TextView;

    .line 184
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->view:Landroid/view/View;

    const p2, 0x7f080065

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->coolbutton:Landroid/widget/ImageView;

    .line 185
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->view:Landroid/view/View;

    const p2, 0x7f0800ca

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->nooverheating:Landroid/widget/TextView;

    .line 187
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->showmain:Landroid/widget/TextView;

    const-string p2, "NORMAL"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->showsec:Landroid/widget/TextView;

    const-string p2, "CPU Temperature is GOOD"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->nooverheating:Landroid/widget/TextView;

    const-string p2, "Currently No App causing Overheating"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->coolbutton:Landroid/widget/ImageView;

    const p2, 0x7f070088

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->coolbutton:Landroid/widget/ImageView;

    new-instance p2, Llightning/thunder/cleaner/Fragments/CPUCooler$2;

    invoke-direct {p2, p0}, Llightning/thunder/cleaner/Fragments/CPUCooler$2;-><init>(Llightning/thunder/cleaner/Fragments/CPUCooler;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->tempimg:Landroid/widget/ImageView;

    const p2, 0x7f070063

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->view:Landroid/view/View;

    const p2, 0x7f08004b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->batterytemp:Landroid/widget/TextView;

    const-string p1, "Temperrature"

    .line 213
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->temp:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :catch_0
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 224
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 227
    :try_start_0
    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/CPUCooler;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 317
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 321
    sget-object p1, Llightning/thunder/cleaner/MainActivity;->name:Landroid/widget/TextView;

    const-string v0, "CPU Cooler"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
