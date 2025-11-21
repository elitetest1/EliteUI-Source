.class public Landroid/content/theming/ThemeSettingsUpdater;
.super Ljava/lang/Object;
.source "ThemeSettingsUpdater.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/theming/ThemeSettingsUpdater;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAccentColor:Ljava/lang/Integer;

.field private blacklist mColorBoth:Ljava/lang/Boolean;

.field private blacklist mColorIndex:Ljava/lang/Integer;

.field private blacklist mColorSource:Ljava/lang/String;

.field private blacklist mSystemPalette:Ljava/lang/Integer;

.field private blacklist mThemeStyle:Ljava/lang/Integer;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/theming/ThemeSettingsUpdater$1;

    invoke-direct {v0}, Landroid/content/theming/ThemeSettingsUpdater$1;-><init>()V

    sput-object v0, Landroid/content/theming/ThemeSettingsUpdater;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mAccentColor:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorBoth:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorIndex:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mSystemPalette:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mThemeStyle:Ljava/lang/Integer;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroid/content/theming/ThemeSettingsUpdater;->mAccentColor:Ljava/lang/Integer;

    iput-object p6, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorBoth:Ljava/lang/Boolean;

    iput-object p1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorIndex:Ljava/lang/Integer;

    iput-object p4, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorSource:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/theming/ThemeSettingsUpdater;->mSystemPalette:Ljava/lang/Integer;

    iput-object p5, p0, Landroid/content/theming/ThemeSettingsUpdater;->mThemeStyle:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public blacklist accentColor(I)Landroid/content/theming/ThemeSettingsUpdater;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mAccentColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public blacklist colorBoth(Z)Landroid/content/theming/ThemeSettingsUpdater;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorBoth:Ljava/lang/Boolean;

    return-object p0
.end method

.method public blacklist colorIndex(I)Landroid/content/theming/ThemeSettingsUpdater;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public blacklist colorSource(Ljava/lang/String;)Landroid/content/theming/ThemeSettingsUpdater;
    .locals 0

    iput-object p1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorSource:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getAccentColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mAccentColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public blacklist getColorBoth()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorBoth:Ljava/lang/Boolean;

    return-object p0
.end method

.method public blacklist getColorIndex()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public blacklist getColorSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorSource:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSystemPalette()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mSystemPalette:Ljava/lang/Integer;

    return-object p0
.end method

.method public blacklist getThemeStyle()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mThemeStyle:Ljava/lang/Integer;

    return-object p0
.end method

.method public blacklist systemPalette(I)Landroid/content/theming/ThemeSettingsUpdater;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mSystemPalette:Ljava/lang/Integer;

    return-object p0
.end method

.method public blacklist themeStyle(I)Landroid/content/theming/ThemeSettingsUpdater;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mThemeStyle:Ljava/lang/Integer;

    return-object p0
.end method

.method public blacklist toThemeSettings(Landroid/content/theming/ThemeSettings;)Landroid/content/theming/ThemeSettings;
    .locals 7

    new-instance v0, Landroid/content/theming/ThemeSettings;

    iget-object v1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorIndex:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/content/theming/ThemeSettings;->colorIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/content/theming/ThemeSettingsUpdater;->mSystemPalette:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/content/theming/ThemeSettings;->systemPalette()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/content/theming/ThemeSettingsUpdater;->mAccentColor:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/content/theming/ThemeSettings;->accentColor()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorSource:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/theming/ThemeSettings;->colorSource()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Landroid/content/theming/ThemeSettingsUpdater;->mThemeStyle:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/content/theming/ThemeSettings;->themeStyle()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object p0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorBoth:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/content/theming/ThemeSettings;->colorBoth()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Landroid/content/theming/ThemeSettings;-><init>(IIILjava/lang/String;IZ)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/content/theming/ThemeSettingsUpdater;->mAccentColor:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object p2, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorBoth:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object p2, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorIndex:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object p2, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object p2, p0, Landroid/content/theming/ThemeSettingsUpdater;->mSystemPalette:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object p0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mThemeStyle:Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
