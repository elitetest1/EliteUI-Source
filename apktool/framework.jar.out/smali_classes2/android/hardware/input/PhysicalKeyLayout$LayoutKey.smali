.class public final Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
.super Ljava/lang/Record;
.source "PhysicalKeyLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/PhysicalKeyLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayoutKey"
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
        "keyCode",
        "scanCode",
        "keyWeight",
        "glyph"
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
        Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;
    }
.end annotation


# instance fields
.field private final blacklist glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

.field private final blacklist keyCode:I

.field private final blacklist keyWeight:F

.field private final blacklist scanCode:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I

    iget v1, p1, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I

    iget v1, p1, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight:F

    iget v1, p1, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    iget-object p1, p1, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object p0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetkeyCode(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)I
    .locals 0

    iget p0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetscanCode(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)I
    .locals 0

    iget p0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I

    return p0
.end method

.method public constructor blacklist <init>(IIFLandroid/hardware/input/PhysicalKeyLayout$KeyGlyph;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "scanCode",
            "keyWeight",
            "glyph"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I

    iput p2, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I

    iput p3, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight:F

    iput-object p4, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist glyph()Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    return-object p0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I

    iget v1, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I

    iget v2, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight:F

    iget-object p0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    invoke-static {v0, v1, v2, p0}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m(IIFLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist keyCode()I
    .locals 0

    iget p0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I

    return p0
.end method

.method public blacklist keyWeight()F
    .locals 0

    iget p0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight:F

    return p0
.end method

.method public blacklist scanCode()I
    .locals 0

    iget p0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I

    return p0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const-string v1, "keyCode;scanCode;keyWeight;glyph"

    invoke-static {p0, v0, v1}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
