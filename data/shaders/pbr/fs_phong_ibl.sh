#ifdef RADIANCE_ENVMAP
#ifdef REFRACTION
    vec3 env = ibl_refract(fragment.view, fragment.normal, material.refraction, env_brdf_miplevel(material));
#else
    vec3 env = ibl_reflect(fragment.view, fragment.normal, env_brdf_miplevel(material));
#endif
    //env *= zone.radiance_color * zone.radiance_energy;
    //env_blend_op(material, env, diffuse, 1.0);
    env_blend_op(material, env, diffuse, 0.5);
    env_blend_op(material, env, specular, 0.5);
#endif