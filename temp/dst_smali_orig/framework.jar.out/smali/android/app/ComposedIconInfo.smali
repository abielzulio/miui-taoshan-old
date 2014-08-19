.class public Landroid/app/ComposedIconInfo;
.super Ljava/lang/Object;
.source "ComposedIconInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ComposedIconInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public iconBacks:[I

.field public iconDensity:I

.field public iconMask:I

.field public iconScale:F

.field public iconSize:I

.field public iconUpon:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/app/ComposedIconInfo$1;

    invoke-direct {v0}, Landroid/app/ComposedIconInfo$1;-><init>()V

    sput-object v0, Landroid/app/ComposedIconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "source"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/app/ComposedIconInfo;->iconScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/ComposedIconInfo;->iconDensity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/ComposedIconInfo;->iconSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, backCount:I
    if-lez v0, :cond_0

    new-array v2, v0, [I

    iput-object v2, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/ComposedIconInfo;->iconMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/ComposedIconInfo;->iconUpon:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ComposedIconInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ComposedIconInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v4, p0, Landroid/app/ComposedIconInfo;->iconScale:F

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    iget v4, p0, Landroid/app/ComposedIconInfo;->iconDensity:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Landroid/app/ComposedIconInfo;->iconSize:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v4, v4

    :goto_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    if-eqz v4, :cond_1

    iget-object v0, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .local v3, resId:I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #resId:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    iget v4, p0, Landroid/app/ComposedIconInfo;->iconMask:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Landroid/app/ComposedIconInfo;->iconUpon:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
