.class Landroid/view/MenuInflater$MenuState;
.super Ljava/lang/Object;
.source "MenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final greylist-max-o defaultGroupId:I = 0x0

.field private static final greylist-max-o defaultItemCategory:I = 0x0

.field private static final greylist-max-o defaultItemCheckable:I = 0x0

.field private static final greylist-max-o defaultItemChecked:Z = false

.field private static final greylist-max-o defaultItemEnabled:Z = true

.field private static final greylist-max-o defaultItemId:I = 0x0

.field private static final greylist-max-o defaultItemOrder:I = 0x0

.field private static final greylist-max-o defaultItemVisible:Z = true


# instance fields
.field private greylist-max-o groupCategory:I

.field private greylist-max-o groupCheckable:I

.field private greylist-max-o groupEnabled:Z

.field private greylist-max-o groupId:I

.field private greylist-max-o groupOrder:I

.field private greylist-max-o groupVisible:Z

.field private greylist-max-o itemActionProvider:Landroid/view/ActionProvider;

.field private greylist-max-o itemActionProviderClassName:Ljava/lang/String;

.field private greylist-max-o itemActionViewClassName:Ljava/lang/String;

.field private greylist-max-o itemActionViewLayout:I

.field private greylist-max-o itemAdded:Z

.field private greylist-max-o itemAlphabeticModifiers:I

.field private greylist-max-o itemAlphabeticShortcut:C

.field private greylist-max-o itemCategoryOrder:I

.field private greylist-max-o itemCheckable:I

.field private greylist-max-o itemChecked:Z

.field private greylist-max-o itemContentDescription:Ljava/lang/CharSequence;

.field private greylist-max-o itemEnabled:Z

.field private greylist-max-o itemIconResId:I

.field private greylist-max-o itemIconTintList:Landroid/content/res/ColorStateList;

.field private greylist-max-o itemId:I

.field private greylist-max-o itemListenerMethodName:Ljava/lang/String;

.field private greylist-max-o itemNumericModifiers:I

.field private greylist-max-o itemNumericShortcut:C

.field private greylist-max-o itemShowAsAction:I

.field private greylist-max-o itemTitle:Ljava/lang/CharSequence;

.field private greylist-max-o itemTitleCondensed:Ljava/lang/CharSequence;

.field private greylist-max-o itemTooltipText:Ljava/lang/CharSequence;

.field private greylist-max-o itemVisible:Z

.field private blacklist mItemIconBlendMode:Landroid/graphics/BlendMode;

.field private greylist-max-o menu:Landroid/view/Menu;

.field final synthetic blacklist this$0:Landroid/view/MenuInflater;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetitemActionProvider(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;
    .locals 0

    iget-object p0, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/view/MenuInflater;Landroid/view/Menu;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroid/view/MenuInflater$MenuState;->mItemIconBlendMode:Landroid/graphics/BlendMode;

    iput-object p2, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    invoke-virtual {p0}, Landroid/view/MenuInflater$MenuState;->resetGroup()V

    return-void
.end method

.method private greylist-max-o getShortcut(Ljava/lang/String;)C
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method private greylist-max-o newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {p0}, Landroid/view/MenuInflater;->-$$Nest$fgetmContext(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {p0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot instantiate class: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MenuInflater"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private greylist-max-o setItem(Landroid/view/MenuItem;)V
    .locals 5

    iget-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemVisible:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemIconResId:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticShortcut:C

    iget v4, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticModifiers:I

    invoke-interface {v0, v1, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, Landroid/view/MenuInflater$MenuState;->itemNumericShortcut:C

    iget v4, p0, Landroid/view/MenuInflater$MenuState;->itemNumericModifiers:I

    invoke-interface {v0, v1, v4}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    iget v0, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->mItemIconBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIconTintBlendMode(Landroid/graphics/BlendMode;)Landroid/view/MenuItem;

    :cond_2
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :cond_3
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v0}, Landroid/view/MenuInflater;->-$$Nest$fgetmContext(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;

    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v1}, Landroid/view/MenuInflater;->-$$Nest$mgetRealOwner(Landroid/view/MenuInflater;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    instance-of v0, p1, Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_6

    invoke-virtual {v0, v3}, Lcom/android/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    :cond_6
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/view/MenuInflater;->-$$Nest$sfgetACTION_VIEW_CONSTRUCTOR_SIGNATURE()[Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v2}, Landroid/view/MenuInflater;->-$$Nest$fgetmActionViewConstructorArguments(Landroid/view/MenuInflater;)[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/view/MenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move v2, v3

    :cond_7
    iget v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v0, :cond_9

    if-nez v2, :cond_8

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_8
    const-string v0, "MenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_a

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    :cond_a
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object p0, p0, Landroid/view/MenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public greylist-max-o addItem()Landroid/view/MenuItem;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    iget v2, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/MenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public greylist-max-o addSubMenuItem()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    iget v2, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/MenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public greylist-max-o hasAddedItem()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    return p0
.end method

.method public greylist-max-o readGroup(Landroid/util/AttributeSet;)V
    .locals 3

    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v0}, Landroid/view/MenuInflater;->-$$Nest$fgetmContext(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public greylist-max-o readItem(Landroid/util/AttributeSet;)V
    .locals 5

    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v0}, Landroid/view/MenuInflater;->-$$Nest$fgetmContext(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->MenuItem:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    const/4 v0, 0x5

    iget v2, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v2, 0x6

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemIconResId:I

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget-object v2, p0, Landroid/view/MenuInflater$MenuState;->mItemIconBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v0, v2}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->mItemIconBlendMode:Landroid/graphics/BlendMode;

    goto :goto_0

    :cond_0
    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->mItemIconBlendMode:Landroid/graphics/BlendMode;

    :goto_0
    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_1
    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    :goto_1
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/MenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticShortcut:C

    const/16 v0, 0x13

    const/16 v2, 0x1000

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticModifiers:I

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/MenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/view/MenuInflater$MenuState;->itemNumericShortcut:C

    const/16 v0, 0x14

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemNumericModifiers:I

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    goto :goto_2

    :cond_2
    iget v0, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    :goto_2
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemChecked:Z

    const/4 v0, 0x4

    iget-boolean v2, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemVisible:Z

    iget-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemEnabled:Z

    const/16 v0, 0xe

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    if-eqz v2, :cond_4

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v3, :cond_4

    invoke-static {}, Landroid/view/MenuInflater;->-$$Nest$sfgetACTION_PROVIDER_CONSTRUCTOR_SIGNATURE()[Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v3}, Landroid/view/MenuInflater;->-$$Nest$fgetmActionProviderConstructorArguments(Landroid/view/MenuInflater;)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Landroid/view/MenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ActionProvider;

    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    const-string v0, "MenuInflater"

    const-string v2, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    :goto_4
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    return-void
.end method

.method public greylist-max-o resetGroup()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    return-void
.end method
