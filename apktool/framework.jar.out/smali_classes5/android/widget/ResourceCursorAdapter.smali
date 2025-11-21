.class public abstract Landroid/widget/ResourceCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "ResourceCursorAdapter.java"


# instance fields
.field private greylist-max-o mDropDownInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mDropDownLayout:I

.field private greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mLayout:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput p2, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Landroid/widget/ResourceCursorAdapter;->mLayout:I

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput p2, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Landroid/widget/ResourceCursorAdapter;->mLayout:I

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput p2, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Landroid/widget/ResourceCursorAdapter;->mLayout:I

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public whitelist newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    iget-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    iget p0, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownLayout:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public whitelist newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    iget-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget p0, p0, Landroid/widget/ResourceCursorAdapter;->mLayout:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public whitelist setDropDownViewResource(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownLayout:I

    return-void
.end method

.method public whitelist setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    return-void

    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/ResourceCursorAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public whitelist setViewResource(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ResourceCursorAdapter;->mLayout:I

    return-void
.end method
