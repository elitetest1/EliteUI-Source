.class Landroid/content/res/GradientColor$GradientColorFactory;
.super Landroid/content/res/ConstantState;
.source "GradientColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/GradientColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GradientColorFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/res/ConstantState<",
        "Landroid/content/res/ComplexColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mSrc:Landroid/content/res/GradientColor;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/res/GradientColor;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/res/ConstantState;-><init>()V

    iput-object p1, p0, Landroid/content/res/GradientColor$GradientColorFactory;->mSrc:Landroid/content/res/GradientColor;

    return-void
.end method


# virtual methods
.method public greylist-max-o getChangingConfigurations()I
    .locals 0

    iget-object p0, p0, Landroid/content/res/GradientColor$GradientColorFactory;->mSrc:Landroid/content/res/GradientColor;

    invoke-static {p0}, Landroid/content/res/GradientColor;->-$$Nest$fgetmChangingConfigurations(Landroid/content/res/GradientColor;)I

    move-result p0

    return p0
.end method

.method public greylist-max-o newInstance()Landroid/content/res/GradientColor;
    .locals 0

    iget-object p0, p0, Landroid/content/res/GradientColor$GradientColorFactory;->mSrc:Landroid/content/res/GradientColor;

    return-object p0
.end method

.method public greylist-max-o newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 0

    iget-object p0, p0, Landroid/content/res/GradientColor$GradientColorFactory;->mSrc:Landroid/content/res/GradientColor;

    invoke-virtual {p0, p2}, Landroid/content/res/GradientColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist newInstance()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/content/res/GradientColor$GradientColorFactory;->newInstance()Landroid/content/res/GradientColor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/content/res/GradientColor$GradientColorFactory;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object p0

    return-object p0
.end method
