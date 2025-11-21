.class public final Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
.super Ljava/lang/Record;
.source "PhysicalKeyLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/PhysicalKeyLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnterKey"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "row",
        "column",
        "topKeyWeight",
        "bottomKeyWeight"
    }
    componentSignatures = {
        null,
        null,
        null,
        null
    }
    componentTypes = {
        I,
        I,
        F,
        F
    }
.end annotation


# instance fields
.field private final blacklist bottomKeyWeight:F

.field private final blacklist column:I

.field private final blacklist row:I

.field private final blacklist topKeyWeight:F


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->row:I

    iget v1, p1, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->row:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->column:I

    iget v1, p1, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->column:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->topKeyWeight:F

    iget v1, p1, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->topKeyWeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->bottomKeyWeight:F

    iget p1, p1, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->bottomKeyWeight:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->row:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->column:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->topKeyWeight:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p0, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->bottomKeyWeight:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(IIFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "row",
            "column",
            "topKeyWeight",
            "bottomKeyWeight"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->row:I

    iput p2, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->column:I

    iput p3, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->topKeyWeight:F

    iput p4, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->bottomKeyWeight:F

    return-void
.end method


# virtual methods
.method public blacklist bottomKeyWeight()F
    .locals 0

    iget p0, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->bottomKeyWeight:F

    return p0
.end method

.method public blacklist column()I
    .locals 0

    iget p0, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->column:I

    return p0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->row:I

    iget v1, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->column:I

    iget v2, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->topKeyWeight:F

    iget p0, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->bottomKeyWeight:F

    invoke-static {v0, v1, v2, p0}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m(IIFF)I

    move-result p0

    return p0
.end method

.method public blacklist row()I
    .locals 0

    iget p0, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->row:I

    return p0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

    const-string v1, "row;column;topKeyWeight;bottomKeyWeight"

    invoke-static {p0, v0, v1}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist topKeyWeight()F
    .locals 0

    iget p0, p0, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->topKeyWeight:F

    return p0
.end method
