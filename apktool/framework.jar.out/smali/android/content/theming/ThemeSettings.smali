.class public final Landroid/content/theming/ThemeSettings;
.super Ljava/lang/Object;
.source "ThemeSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/theming/ThemeSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAccentColor:I

.field private final blacklist mColorBoth:Z

.field private final blacklist mColorIndex:I

.field private final blacklist mColorSource:Ljava/lang/String;

.field private final blacklist mSystemPalette:I

.field private final blacklist mThemeStyle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/theming/ThemeSettings$1;

    invoke-direct {v0}, Landroid/content/theming/ThemeSettings$1;-><init>()V

    sput-object v0, Landroid/content/theming/ThemeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIILjava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroid/content/theming/ThemeSettings;->mAccentColor:I

    iput-boolean p6, p0, Landroid/content/theming/ThemeSettings;->mColorBoth:Z

    iput p1, p0, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    iput-object p4, p0, Landroid/content/theming/ThemeSettings;->mColorSource:Ljava/lang/String;

    iput p2, p0, Landroid/content/theming/ThemeSettings;->mSystemPalette:I

    iput p5, p0, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/theming/ThemeSettings;->mAccentColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/theming/ThemeSettings;->mColorBoth:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "s"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/theming/ThemeSettings;->mColorSource:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/theming/ThemeSettings;->mSystemPalette:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    return-void
.end method

.method public static blacklist updater()Landroid/content/theming/ThemeSettingsUpdater;
    .locals 1

    new-instance v0, Landroid/content/theming/ThemeSettingsUpdater;

    invoke-direct {v0}, Landroid/content/theming/ThemeSettingsUpdater;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist accentColor()Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Landroid/content/theming/ThemeSettings;->mAccentColor:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public blacklist colorBoth()Ljava/lang/Boolean;
    .locals 0

    iget-boolean p0, p0, Landroid/content/theming/ThemeSettings;->mColorBoth:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public blacklist colorIndex()Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public blacklist colorSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/theming/ThemeSettings;->mColorSource:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/content/theming/ThemeSettings;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/content/theming/ThemeSettings;

    iget v1, p0, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    iget v2, p1, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/content/theming/ThemeSettings;->mSystemPalette:I

    iget v2, p1, Landroid/content/theming/ThemeSettings;->mSystemPalette:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/content/theming/ThemeSettings;->mAccentColor:I

    iget v2, p1, Landroid/content/theming/ThemeSettings;->mAccentColor:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/content/theming/ThemeSettings;->mColorSource:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/theming/ThemeSettings;->mColorSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    iget v2, p1, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    if-ne v1, v2, :cond_1

    iget-boolean p0, p0, Landroid/content/theming/ThemeSettings;->mColorBoth:Z

    iget-boolean p1, p1, Landroid/content/theming/ThemeSettings;->mColorBoth:Z

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    iget v0, p0, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/content/theming/ThemeSettings;->mSystemPalette:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/content/theming/ThemeSettings;->mAccentColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/content/theming/ThemeSettings;->mColorSource:Ljava/lang/String;

    iget v0, p0, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean p0, p0, Landroid/content/theming/ThemeSettings;->mColorBoth:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist systemPalette()Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Landroid/content/theming/ThemeSettings;->mSystemPalette:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public blacklist themeStyle()Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/content/theming/ThemeSettings;->mAccentColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/content/theming/ThemeSettings;->mColorBoth:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/content/theming/ThemeSettings;->mColorSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget p2, p0, Landroid/content/theming/ThemeSettings;->mSystemPalette:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
