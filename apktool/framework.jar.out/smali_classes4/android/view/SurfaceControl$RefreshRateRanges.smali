.class public final Landroid/view/SurfaceControl$RefreshRateRanges;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefreshRateRanges"
.end annotation


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "RefreshRateRanges"


# instance fields
.field public final blacklist physical:Landroid/view/SurfaceControl$RefreshRateRange;

.field public final blacklist render:Landroid/view/SurfaceControl$RefreshRateRange;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v0}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v0}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v1, p1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget p1, p1, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-direct {v0, v1, p1}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    iput-object v0, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    new-instance p1, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v0, p2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget p2, p2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-direct {p1, v0, p2}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    iput-object p1, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    return-void
.end method


# virtual methods
.method public blacklist copyFrom(Landroid/view/SurfaceControl$RefreshRateRanges;)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v1, p1, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$RefreshRateRange;->copyFrom(Landroid/view/SurfaceControl$RefreshRateRange;)V

    iget-object p0, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object p1, p1, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$RefreshRateRange;->copyFrom(Landroid/view/SurfaceControl$RefreshRateRange;)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/view/SurfaceControl$RefreshRateRanges;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v1, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v3, p1, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$RefreshRateRange;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object p1, p1, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$RefreshRateRange;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object p0, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "physical: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " render:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
