.class Lcom/android/internal/app/AlertController$BlurEffect;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlurEffect"
.end annotation


# static fields
.field private static final blacklist RADIUS:I = 0x96


# instance fields
.field private final blacklist context:Landroid/content/Context;

.field final synthetic blacklist this$0:Lcom/android/internal/app/AlertController;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/AlertController;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/AlertController$BlurEffect;->this$0:Lcom/android/internal/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/AlertController$BlurEffect;->context:Landroid/content/Context;

    return-void
.end method

.method private blacklist setBlurEffect(Landroid/view/View;Landroid/view/SemBlurInfo;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method


# virtual methods
.method public blacklist setWindowBlur(Landroid/view/View;IF)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController$BlurEffect;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmThemeIsDeviceDefaultDark(Lcom/android/internal/app/AlertController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x82

    goto :goto_0

    :cond_0
    const/16 v0, 0x73

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/app/AlertController$BlurEffect;->setWindowBlur(Landroid/view/View;IFI)V

    return-void
.end method

.method public blacklist setWindowBlur(Landroid/view/View;IFI)V
    .locals 2

    new-instance v0, Landroid/view/SemBlurInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/view/SemBlurInfo$Builder;->setColorCurvePreset(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AlertController$BlurEffect;->setBlurEffect(Landroid/view/View;Landroid/view/SemBlurInfo;)V

    return-void
.end method
