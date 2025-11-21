.class public Lcom/android/internal/widget/CallLayout;
.super Landroid/widget/FrameLayout;
.source "CallLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private blacklist mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mConversationIconView:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mIcon:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mLargeIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mLayoutColor:I

.field private final blacklist mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

.field private blacklist mUser:Landroid/app/Person;


# direct methods
.method public static synthetic blacklist $r8$lambda$-wwf7N-wL4IzjC0LWlDfo_Val0A(Lcom/android/internal/widget/CallLayout;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->lambda$setDataAsync$5(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EasLOVn_n2ubkh5YJufKWDNP7q0(Lcom/android/internal/widget/CallLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->lambda$setLayoutColorAsync$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Iz5Rus-oguxo3HeNGvlDtDq1mes(Lcom/android/internal/widget/CallLayout;Landroid/graphics/drawable/Icon;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->lambda$setLargeIconAsync$3(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$d3TAshWO8tXuEgYiPT2vQHCamoU(Lcom/android/internal/widget/CallLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->lambda$onFinishInflate$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {p1}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    return-void
.end method

.method private blacklist getConversationIcon()Landroid/graphics/drawable/Icon;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mUser:Landroid/app/Person;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/widget/CallLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v3, v2, v1}, Lcom/android/internal/widget/PeopleHelper;->findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v2, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget p0, p0, Lcom/android/internal/widget/CallLayout;->mLayoutColor:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private blacklist getPerson(Landroid/os/Bundle;)Landroid/app/Person;
    .locals 1

    const-string p0, "android.callPerson"

    const-class v0, Landroid/app/Person;

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Person;

    return-object p0
.end method

.method private synthetic blacklist lambda$onFinishInflate$0(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object p0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$setDataAsync$5(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CallLayout;->setData(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$setLargeIconAsync$3(Landroid/graphics/drawable/Icon;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CallLayout;->setLargeIcon(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method static synthetic blacklist lambda$setLargeIconAsync$4()V
    .locals 0

    return-void
.end method

.method private synthetic blacklist lambda$setLayoutColorAsync$1(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CallLayout;->setLayoutColor(I)V

    return-void
.end method

.method static synthetic blacklist lambda$setLayoutColorAsync$2()V
    .locals 0

    return-void
.end method

.method private blacklist setUser(Landroid/app/Person;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mUser:Landroid/app/Person;

    return-void
.end method


# virtual methods
.method protected whitelist onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/CallLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->init(Landroid/content/Context;)V

    const v0, 0x10202bb

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CallLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CallLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    const v0, 0x10202bd

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CallLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    new-instance v1, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/CallLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setOnForceHiddenChangedListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist setData(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setDataAsync"
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->getPerson(Landroid/os/Bundle;)Landroid/app/Person;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->setUser(Landroid/app/Person;)V

    invoke-direct {p0}, Lcom/android/internal/widget/CallLayout;->getConversationIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public blacklist setDataAsync(Landroid/os/Bundle;)Ljava/lang/Runnable;
    .locals 1

    invoke-static {}, Landroid/widget/flags/Flags;->callStyleSetDataAsync()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/CallLayout;Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->getPerson(Landroid/os/Bundle;)Landroid/app/Person;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->setUser(Landroid/app/Person;)V

    invoke-direct {p0}, Lcom/android/internal/widget/CallLayout;->getConversationIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setLargeIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLargeIconAsync"
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public blacklist setLargeIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 1

    invoke-static {}, Landroid/widget/flags/Flags;->callStyleSetDataAsync()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/widget/CallLayout;Landroid/graphics/drawable/Icon;)V

    return-object v0

    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    new-instance p0, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda5;-><init>()V

    return-object p0
.end method

.method public blacklist setLayoutColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLayoutColorAsync"
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/CallLayout;->mLayoutColor:I

    return-void
.end method

.method public blacklist setLayoutColorAsync(I)Ljava/lang/Runnable;
    .locals 1

    invoke-static {}, Landroid/widget/flags/Flags;->callStyleSetDataAsync()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/CallLayout;I)V

    return-object v0

    :cond_0
    iput p1, p0, Lcom/android/internal/widget/CallLayout;->mLayoutColor:I

    new-instance p0, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda3;-><init>()V

    return-object p0
.end method

.method public blacklist setNotificationBackgroundColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
