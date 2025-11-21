.class Landroid/content/om/wallpapertheme/TemplateManager$1;
.super Ljava/lang/Object;
.source "TemplateManager.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/om/wallpapertheme/TemplateManager;->getColors(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Landroid/content/om/wallpapertheme/TemplateManager$UidItem;",
        "Ljava/util/List<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/om/wallpapertheme/TemplateManager;


# direct methods
.method constructor blacklist <init>(Landroid/content/om/wallpapertheme/TemplateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/content/om/wallpapertheme/TemplateManager$1;->this$0:Landroid/content/om/wallpapertheme/TemplateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/content/om/wallpapertheme/TemplateManager$UidItem;

    invoke-virtual {p0, p1}, Landroid/content/om/wallpapertheme/TemplateManager$1;->apply(Landroid/content/om/wallpapertheme/TemplateManager$UidItem;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist apply(Landroid/content/om/wallpapertheme/TemplateManager$UidItem;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/wallpapertheme/TemplateManager$UidItem;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Landroid/content/om/wallpapertheme/TemplateManager$UidItem;->themes:[Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/om/wallpapertheme/TemplateManager$UidItem;->themes:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v3, p1, Landroid/content/om/wallpapertheme/TemplateManager$UidItem;->theme:Ljava/lang/String;

    aput-object v3, v0, v2

    iget-object v3, p1, Landroid/content/om/wallpapertheme/TemplateManager$UidItem;->theme:Ljava/lang/String;

    aput-object v3, v0, v1

    :goto_0
    aget-object v3, v0, v2

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    aget-object v2, v0, v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_1
    iget-object v3, p0, Landroid/content/om/wallpapertheme/TemplateManager$1;->this$0:Landroid/content/om/wallpapertheme/TemplateManager;

    iget-object v3, v3, Landroid/content/om/wallpapertheme/TemplateManager;->mColorTemplate:Ljava/util/HashMap;

    aget-object v2, v0, v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/wallpapertheme/TemplateManager$ColorItem;

    if-nez v2, :cond_2

    return-object v5

    :cond_2
    iget-object v3, p0, Landroid/content/om/wallpapertheme/TemplateManager$1;->this$0:Landroid/content/om/wallpapertheme/TemplateManager;

    invoke-static {v3}, Landroid/content/om/wallpapertheme/TemplateManager;->-$$Nest$fgetmThemePalette(Landroid/content/om/wallpapertheme/TemplateManager;)Landroid/content/om/wallpapertheme/ThemePalette;

    move-result-object v6

    iget-boolean v6, v6, Landroid/content/om/wallpapertheme/ThemePalette;->mIsGray:Z

    if-eqz v6, :cond_3

    iget-object v2, v2, Landroid/content/om/wallpapertheme/TemplateManager$ColorItem;->colorLightGray:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v2, v2, Landroid/content/om/wallpapertheme/TemplateManager$ColorItem;->colorLight:Ljava/lang/String;

    :goto_1
    invoke-static {v3, v2}, Landroid/content/om/wallpapertheme/TemplateManager;->-$$Nest$mgetColorFromName(Landroid/content/om/wallpapertheme/TemplateManager;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_4

    return-object v5

    :cond_4
    aget-object v3, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    aget-object p0, v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_4

    :cond_5
    iget-object v3, p0, Landroid/content/om/wallpapertheme/TemplateManager$1;->this$0:Landroid/content/om/wallpapertheme/TemplateManager;

    iget-object v3, v3, Landroid/content/om/wallpapertheme/TemplateManager;->mColorTemplate:Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/om/wallpapertheme/TemplateManager$ColorItem;

    if-nez v0, :cond_6

    return-object v5

    :cond_6
    iget-object p0, p0, Landroid/content/om/wallpapertheme/TemplateManager$1;->this$0:Landroid/content/om/wallpapertheme/TemplateManager;

    invoke-static {p0}, Landroid/content/om/wallpapertheme/TemplateManager;->-$$Nest$fgetmThemePalette(Landroid/content/om/wallpapertheme/TemplateManager;)Landroid/content/om/wallpapertheme/ThemePalette;

    move-result-object v1

    iget-boolean v1, v1, Landroid/content/om/wallpapertheme/ThemePalette;->mIsGray:Z

    if-eqz v1, :cond_7

    iget-object v0, v0, Landroid/content/om/wallpapertheme/TemplateManager$ColorItem;->colorDarkGray:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iget-object v0, v0, Landroid/content/om/wallpapertheme/TemplateManager$ColorItem;->colorDark:Ljava/lang/String;

    :goto_3
    invoke-static {p0, v0}, Landroid/content/om/wallpapertheme/TemplateManager;->-$$Nest$mgetColorFromName(Landroid/content/om/wallpapertheme/TemplateManager;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    :goto_4
    if-nez p0, :cond_8

    return-object v5

    :cond_8
    iget-object v0, p1, Landroid/content/om/wallpapertheme/TemplateManager$UidItem;->opacity:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_9

    iget-object v0, p1, Landroid/content/om/wallpapertheme/TemplateManager$UidItem;->opacity:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Landroid/content/om/wallpapertheme/ThemeUtil;->adjustAlpha(FI)Ljava/lang/Integer;

    move-result-object v2

    iget-object p1, p1, Landroid/content/om/wallpapertheme/TemplateManager$UidItem;->opacity:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Landroid/content/om/wallpapertheme/ThemeUtil;->adjustAlpha(FI)Ljava/lang/Integer;

    move-result-object p0

    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    filled-new-array {v2, p0}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method
