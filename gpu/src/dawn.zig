const ChainedStruct = @import("types.zig").ChainedStruct;
const Texture = @import("texture.zig").Texture;
const TextureUsageFlags = @import("texture.zig").TextureUsageFlags;

pub const CacheDeviceDescriptor = extern struct {
    // TODO: file an issue on Dawn: why not named nextInChain?
    chain: ChainedStruct,
    isolation_key: [*:0]const u8,
};

pub const EncoderInternalUsageDescriptor = extern struct {
    // TODO: file an issue on Dawn: why not named nextInChain?
    chain: ChainedStruct,
    use_internal_usages: bool,
};

pub const InstanceDescriptor = extern struct {
    chain: ChainedStruct,
    additional_runtime_search_paths_count: u32,
    additional_runtime_search_paths: [*]const u8,
};

pub const TextureInternalUsageDescriptor = extern struct {
    chain: ChainedStruct,
    internal_usage: TextureUsageFlags,
};

pub const TogglesDeviceDescriptor = extern struct {
    chain: ChainedStruct,
    force_enabled_toggles_count: u32,
    force_enabled_toggles: [*]const u8,
    force_disabled_toggles_count: u32,
    force_disabled_toggles: [*]const u8,
};