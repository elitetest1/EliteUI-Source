.class public final Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdleScreenRefreshRateConfig"
.end annotation


# instance fields
.field public blacklist timeoutMillis:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    return-void
.end method


# virtual methods
.method public blacklist copyFrom(Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    iput p1, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    :cond_0
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    iget p0, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    iget p1, p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget p0, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "timeoutMillis: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
