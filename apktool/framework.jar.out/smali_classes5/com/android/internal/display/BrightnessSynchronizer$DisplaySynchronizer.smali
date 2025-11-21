.class public Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;
.super Ljava/lang/Object;
.source "BrightnessSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/display/BrightnessSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplaySynchronizer"
.end annotation


# instance fields
.field private final blacklist mDisplayId:I

.field private final blacklist mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public blacklist mPreferredSettingValue:F

.field private final blacklist mScreenBrightnessIntGetter:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mScreenBrightnessIntSetter:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(ILandroid/hardware/display/DisplayManager;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/hardware/display/DisplayManager;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mDisplayId:I

    iput-object p2, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object p3, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mScreenBrightnessIntGetter:Ljava/util/function/Supplier;

    iput-object p4, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mScreenBrightnessIntSetter:Ljava/util/function/Consumer;

    return-void
.end method

.method private blacklist checkFloatTypeChanged(III)Z
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-ne p1, v1, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    iget p0, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p0

    if-ne p2, p0, :cond_4

    return v1

    :cond_4
    if-ne p3, p0, :cond_5

    return v2

    :cond_5
    const-string p0, "BrightnessSynchronizer"

    const-string p2, "onChange: both changed"

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v1, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method private static blacklist constrainBrightnessInt(I)I
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method private blacklist syncBrightnessValue(IFZ)V
    .locals 3

    const-string v0, " -> "

    const-string v1, "BrightnessSynchronizer"

    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    iput p2, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "onChange: last float changed: "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mScreenBrightnessIntSetter:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "onChange: last int changed: "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->setScreenBrightnessFloat(F)V

    return-void
.end method


# virtual methods
.method blacklist getScreenBrightnessFloat()F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget p0, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mDisplayId:I

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->getBrightness(I)F

    move-result p0

    return p0
.end method

.method blacklist setScreenBrightnessFloat(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget p0, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mDisplayId:I

    invoke-virtual {v0, p0, p1}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    return-void
.end method

.method public blacklist updateScreenBrightness(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mScreenBrightnessIntGetter:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->constrainBrightnessInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->getScreenBrightnessFloat()F

    move-result v1

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateScreenBrightness: displayId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mPreferredSettingValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") currentBrightnessInt="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " currentBrightnessIntFromFloat="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BrightnessSynchronizer"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_1

    iget p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "synced: mPreferredSettingValue: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " currentBrightnessFloat: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->checkFloatTypeChanged(III)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->syncBrightnessValue(IFZ)V

    return-void
.end method
